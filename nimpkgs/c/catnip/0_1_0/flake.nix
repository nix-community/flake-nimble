{
  description = ''Assembler for runtime code generation'';
  inputs.src-catnip-0_1_0.flake = false;
  inputs.src-catnip-0_1_0.type = "github";
  inputs.src-catnip-0_1_0.owner = "RSDuck";
  inputs.src-catnip-0_1_0.repo = "catnip";
  inputs.src-catnip-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-catnip-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-catnip-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-catnip-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}