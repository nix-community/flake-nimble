{
  description = ''implements macro creates toInterface proc.'';
  inputs.src-interface_implements-0_2_1.flake = false;
  inputs.src-interface_implements-0_2_1.type = "github";
  inputs.src-interface_implements-0_2_1.owner = "itsumura-h";
  inputs.src-interface_implements-0_2_1.repo = "nim-interface-implements";
  inputs.src-interface_implements-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-interface_implements-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-interface_implements-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}