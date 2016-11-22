package com.mum.controller;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.session.HttpSessionEventPublisher;

@Configuration
@EnableWebSecurity
public class SecSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	DataSource dataSource;

	public SecSecurityConfig() {
		super();
	}

	protected void configure(final AuthenticationManagerBuilder auth) throws Exception {

		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select username,password, 1 from user where username=?")
				.authoritiesByUsernameQuery("select username, usertype from user where username=?");
	}

	protected void configure(final HttpSecurity http) throws Exception {

		http.csrf().disable().authorizeRequests().antMatchers("/login*","/register*","/addUser").permitAll().anyRequest().authenticated().and()
				.formLogin().loginPage("/login").loginProcessingUrl("/login").successHandler(successHandler())
				.failureUrl("/login?error=true").usernameParameter("username").passwordParameter("password").and()
				.logout().deleteCookies("JSESSIONID").and().rememberMe().key("uniqueAndSecret")
				.tokenValiditySeconds(86400).and().sessionManagement().sessionFixation().migrateSession()
				.sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED).invalidSessionUrl("/invalidSession")
				.maximumSessions(2).expiredUrl("/sessionExpired");

	}

	private AuthenticationSuccessHandler successHandler() {
		return new MySimpleUrlAuthenticationSuccessHandler();
	}

	@Bean
	public HttpSessionEventPublisher httpSessionEventPublisher() {
		return new HttpSessionEventPublisher();
	}

}
