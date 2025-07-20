public void upload(String username) throws RemoteException, NullPointerException{

try {
            System.out.println(getProperty);
            String lol = "/hei/hei.txt";
            String ServerDirectory=("//" + "JOAKIM-PC"+ "/Users/Public/Server/"); 
            byte[] filedata = cf.downloadFile2(getProperty + lol);
            File file = new File(getProperty + lol); 
            BufferedOutputStream output = new BufferedOutputStream 
                    (new FileOutputStream(ServerDirectory + file.getName())); 
            output.write(filedata,0,filedata.length);
            output.flush();
            output.close();
        } catch(Exception e) {
            System.err.println("FileServer exception: "+ e.getMessage());
            e.printStackTrace();
        }
    }
    public void download(String username) throws RemoteException, NullPointerException{                           
        JFileChooser chooser = new JFileChooser("//" + "JOAKIM-PC" + "/Users/Joakim/Server/");
        chooser.setFileView(new FileView() {
            @Override
            public Boolean isTraversable(File f) {
                return (f.isDirectory() && f.getName().equals("Server")); 
            }
        });
        int returnVal = chooser.showOpenDialog(parent);
        if (returnVal == JFileChooser.APPROVE_OPTION) {
            System.out.println("You chose to open this file: " + chooser.getSelectedFile().getName());
        } try {
            String fileName = chooser.getSelectedFile().getName();
            File selectedFile = chooser.getSelectedFile();
            String clientDirectory = getProperty + "/desktop/";
            byte[] filedata = cf.downloadFile(selectedFile); 
            System.out.println("Byte[] fildata: " + selectedFile);
            File file = new File(fileName);
            System.out.println("fileName: " + fileName);
            BufferedOutputStream output = new BufferedOutputStream(new FileOutputStream(clientDirectory + file.getName()));
            output.write(filedata, 0, filedata.length);
            output.flush();
            output.close();
        } catch (Exception e) {
            System.err.println("FileServer exception: " + e.getMessage());
            e.printStackTrace();
        }
    }