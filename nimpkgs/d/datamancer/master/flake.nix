{
  description = ''A dataframe library with a dplyr like API'';
  inputs.src-datamancer-master.flake = false;
  inputs.src-datamancer-master.type = "github";
  inputs.src-datamancer-master.owner = "SciNim";
  inputs.src-datamancer-master.repo = "datamancer";
  inputs.src-datamancer-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/vindaar/seqmath".type = "github";
  inputs."https://github.com/vindaar/seqmath".owner = "riinr";
  inputs."https://github.com/vindaar/seqmath".repo = "flake-nimble";
  inputs."https://github.com/vindaar/seqmath".ref = "flake-pinning";
  inputs."https://github.com/vindaar/seqmath".dir = "nimpkgs/h/https://github.com/vindaar/seqmath";

  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, src-datamancer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-datamancer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-datamancer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}