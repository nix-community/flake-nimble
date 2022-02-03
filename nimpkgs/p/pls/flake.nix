{
  description = ''A simple but powerful task runner that lets you define your own commands by editing a YAML configuration file.'';
  inputs."pls-master".url = "path:./master";
  inputs."pls-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}