{
  description = ''Mustache in Nim'';
  inputs.src-mustache-v0_3_0.flake = false;
  inputs.src-mustache-v0_3_0.type = "github";
  inputs.src-mustache-v0_3_0.owner = "soasme";
  inputs.src-mustache-v0_3_0.repo = "nim-mustache";
  inputs.src-mustache-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-mustache-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mustache-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}