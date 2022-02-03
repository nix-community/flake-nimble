{
  description = ''Nim's official stdlib extension'';
  inputs.src-fusion-v1_0.flake = false;
  inputs.src-fusion-v1_0.type = "github";
  inputs.src-fusion-v1_0.owner = "nim-lang";
  inputs.src-fusion-v1_0.repo = "fusion";
  inputs.src-fusion-v1_0.ref = "refs/tags/v1.0";
  
  outputs = { self, nixpkgs, src-fusion-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fusion-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fusion-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}