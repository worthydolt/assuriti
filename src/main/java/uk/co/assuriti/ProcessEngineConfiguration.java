package uk.co.assuriti;

import org.camunda.bpm.engine.spring.SpringProcessEngineConfiguration;
import org.camunda.bpm.spring.boot.starter.configuration.CamundaProcessEngineConfiguration;
import org.camunda.bpm.spring.boot.starter.configuration.impl.DefaultProcessEngineConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by mhalma on 27/09/16.
 */
@Configuration
public class ProcessEngineConfiguration {

    @Bean
    public static CamundaProcessEngineConfiguration camundaProcessEngineConfiguration() {
        return new AuthorizationProcessEngineConfiguration();
    }

    static class AuthorizationProcessEngineConfiguration extends DefaultProcessEngineConfiguration {
        @Override
        public void postInit(SpringProcessEngineConfiguration config) {
            config.setAuthorizationEnabled(true);
        }
    }
}
