{
  description = ''Loads environment variables from `.env`.'';
  inputs."dotenv-master".url = "path:./master";
  inputs."dotenv-v1_0_0".url = "path:./v1_0_0";
  inputs."dotenv-v1_0_3".url = "path:./v1_0_3";
  inputs."dotenv-v1_0_4".url = "path:./v1_0_4";
  inputs."dotenv-v1_1_0".url = "path:./v1_1_0";
  inputs."dotenv-v1_1_1".url = "path:./v1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}