{
  description = ''Simple shape drawing'';
  inputs.src-hdrawing-0_1_1.flake = false;
  inputs.src-hdrawing-0_1_1.type = "github";
  inputs.src-hdrawing-0_1_1.owner = "haxscramper";
  inputs.src-hdrawing-0_1_1.repo = "hdrawing";
  inputs.src-hdrawing-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hdrawing-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hdrawing-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hdrawing-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}