{
  description = ''implements macro creates toInterface proc.'';
  inputs.src-interface_implements-0_1_0.flake = false;
  inputs.src-interface_implements-0_1_0.type = "github";
  inputs.src-interface_implements-0_1_0.owner = "itsumura-h";
  inputs.src-interface_implements-0_1_0.repo = "nim-interface-implements";
  inputs.src-interface_implements-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-interface_implements-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-interface_implements-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}