{
  description = ''Nim's Windows API and COM Library'';
  inputs.src-winim-3_7_1.flake = false;
  inputs.src-winim-3_7_1.type = "github";
  inputs.src-winim-3_7_1.owner = "khchen";
  inputs.src-winim-3_7_1.repo = "winim";
  inputs.src-winim-3_7_1.ref = "refs/tags/3.7.1";
  
  outputs = { self, nixpkgs, src-winim-3_7_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winim-3_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winim-3_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}