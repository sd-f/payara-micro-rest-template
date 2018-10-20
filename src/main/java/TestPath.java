import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * @author Lucas Reeh <lreeh@tugraz.at>
 */
@Path("/test")
public class TestPath {
  @GET
  @Path("test")
  @Produces(MediaType.TEXT_PLAIN)
  public String test() {
    return "Test";
  }
}
