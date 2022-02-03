{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
  inputs."c2nim-master".url = "path:./master";
  inputs."c2nim-0_9_15".url = "path:./0_9_15";
  inputs."c2nim-0_9_16".url = "path:./0_9_16";
  inputs."c2nim-0_9_17".url = "path:./0_9_17";
  inputs."c2nim-0_9_18".url = "path:./0_9_18";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}