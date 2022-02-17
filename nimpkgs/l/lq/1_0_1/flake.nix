{
  description = ''Directory listing tool'';
  inputs.src-lq-1_0_1.flake = false;
  inputs.src-lq-1_0_1.type = "github";
  inputs.src-lq-1_0_1.owner = "madprops";
  inputs.src-lq-1_0_1.repo = "lq";
  inputs.src-lq-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."nap".type = "github";
  inputs."nap".owner = "riinr";
  inputs."nap".repo = "flake-nimble";
  inputs."nap".ref = "flake-pinning";
  inputs."nap".dir = "nimpkgs/n/nap";

  
  inputs."parsetoml".type = "github";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".repo = "flake-nimble";
  inputs."parsetoml".ref = "flake-pinning";
  inputs."parsetoml".dir = "nimpkgs/p/parsetoml";

  outputs = { self, nixpkgs, src-lq-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lq-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lq-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}