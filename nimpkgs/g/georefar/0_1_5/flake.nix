{
  description = ''GeoRef Argentina Government MultiSync API Client for Nim'';
  inputs.src-georefar-0_1_5.flake = false;
  inputs.src-georefar-0_1_5.type = "github";
  inputs.src-georefar-0_1_5.owner = "juancarlospaco";
  inputs.src-georefar-0_1_5.repo = "nim-georefar";
  inputs.src-georefar-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-georefar-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-georefar-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-georefar-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}