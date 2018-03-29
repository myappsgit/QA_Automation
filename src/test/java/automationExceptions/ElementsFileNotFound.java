package automationExceptions;

import utils.UtilFunctions;

import java.io.IOException;

/**
 * Created the custom exception class for IO exception caused due to elements json file not found
 */
public class ElementsFileNotFound extends IOException {

    public ElementsFileNotFound(String message)
    {
        super(message);

    }
}
