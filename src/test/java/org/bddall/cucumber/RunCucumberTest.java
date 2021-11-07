package org.bddall.cucumber;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty", "html:target/cucumber-report.html","json:target/json-report/cucumber-java-starter.json"}
)
public class RunCucumberTest {
}
