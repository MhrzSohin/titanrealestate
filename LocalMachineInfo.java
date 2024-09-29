import java.net.InetAddress;

public class LocalMachineInfo {
    public static void main(String[] args) {
        try {
            // Get the local host address
            InetAddress localHost = InetAddress.getLocalHost();
            
            // Print the local host name
            System.out.println("Local Host Name: " + localHost.getHostName());
            
            // Print the local host IP address
            System.out.println("Local Host IP Address: " + localHost.getHostAddress());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
