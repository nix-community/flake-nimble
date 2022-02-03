{
  description = ''Wrapper for the markdown rendering hoedown library'';
  inputs.src-midnight_dynamite-v0_2_0.flake = false;
  inputs.src-midnight_dynamite-v0_2_0.type = "github";
  inputs.src-midnight_dynamite-v0_2_0.owner = "Araq";
  inputs.src-midnight_dynamite-v0_2_0.repo = "midnight_dynamite";
  inputs.src-midnight_dynamite-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-midnight_dynamite-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-midnight_dynamite-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-midnight_dynamite-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}