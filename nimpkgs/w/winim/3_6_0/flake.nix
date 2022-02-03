{
  description = ''Nim's Windows API and COM Library'';
  inputs.src-winim-3_6_0.flake = false;
  inputs.src-winim-3_6_0.type = "github";
  inputs.src-winim-3_6_0.owner = "khchen";
  inputs.src-winim-3_6_0.repo = "winim";
  inputs.src-winim-3_6_0.ref = "refs/tags/3.6.0";
  
  outputs = { self, nixpkgs, src-winim-3_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winim-3_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winim-3_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}