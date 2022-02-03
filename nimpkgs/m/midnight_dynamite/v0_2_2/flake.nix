{
  description = ''Wrapper for the markdown rendering hoedown library'';
  inputs.src-midnight_dynamite-v0_2_2.flake = false;
  inputs.src-midnight_dynamite-v0_2_2.type = "github";
  inputs.src-midnight_dynamite-v0_2_2.owner = "Araq";
  inputs.src-midnight_dynamite-v0_2_2.repo = "midnight_dynamite";
  inputs.src-midnight_dynamite-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-midnight_dynamite-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-midnight_dynamite-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-midnight_dynamite-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}