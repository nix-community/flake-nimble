{
  description = ''Assembler for runtime code generation'';
  inputs.src-catnip-main.flake = false;
  inputs.src-catnip-main.type = "github";
  inputs.src-catnip-main.owner = "RSDuck";
  inputs.src-catnip-main.repo = "catnip";
  inputs.src-catnip-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-catnip-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-catnip-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-catnip-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}