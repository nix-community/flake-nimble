{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';
  inputs."jestercookiemsgs-master".url = "path:./master";
  inputs."jestercookiemsgs-v1_0_1".url = "path:./v1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}