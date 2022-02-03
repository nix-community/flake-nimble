{
  description = ''syntax sugar for assignments'';
  inputs.src-assigns-v0_4_4.flake = false;
  inputs.src-assigns-v0_4_4.type = "github";
  inputs.src-assigns-v0_4_4.owner = "metagn";
  inputs.src-assigns-v0_4_4.repo = "assigns";
  inputs.src-assigns-v0_4_4.ref = "refs/tags/v0.4.4";
  
  outputs = { self, nixpkgs, src-assigns-v0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-assigns-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-assigns-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}