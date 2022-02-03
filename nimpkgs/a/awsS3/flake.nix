{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';
  inputs."awsS3-main".url = "path:./main";
  inputs."awsS3-v1_0_0".url = "path:./v1_0_0";
  inputs."awsS3-v1_0_1".url = "path:./v1_0_1";
  inputs."awsS3-v1_0_2".url = "path:./v1_0_2";
  inputs."awsS3-v1_0_3".url = "path:./v1_0_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}