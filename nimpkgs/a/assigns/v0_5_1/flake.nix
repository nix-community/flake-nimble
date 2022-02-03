{
  description = ''syntax sugar for assignments'';
  inputs.src-assigns-v0_5_1.flake = false;
  inputs.src-assigns-v0_5_1.type = "github";
  inputs.src-assigns-v0_5_1.owner = "metagn";
  inputs.src-assigns-v0_5_1.repo = "assigns";
  inputs.src-assigns-v0_5_1.ref = "refs/tags/v0.5.1";
  
  outputs = { self, nixpkgs, src-assigns-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assigns-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-assigns-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}