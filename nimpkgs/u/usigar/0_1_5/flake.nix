{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';
  inputs.src-usigar-0_1_5.flake = false;
  inputs.src-usigar-0_1_5.type = "github";
  inputs.src-usigar-0_1_5.owner = "juancarlospaco";
  inputs.src-usigar-0_1_5.repo = "nim-usigar";
  inputs.src-usigar-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-usigar-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usigar-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-usigar-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}