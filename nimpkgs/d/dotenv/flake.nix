{
  description = ''Loads environment variables from `.env`.'';
  inputs."dotenv-main".url = "path:./main";
  inputs."dotenv-2_0_0".url = "path:./2_0_0";
  inputs."dotenv-2_0_1".url = "path:./2_0_1";
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