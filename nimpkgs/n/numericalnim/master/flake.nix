{
  description = ''A collection of numerical methods written in Nim'';
  inputs.src-numericalnim-master.flake = false;
  inputs.src-numericalnim-master.type = "github";
  inputs.src-numericalnim-master.owner = "SciNim";
  inputs.src-numericalnim-master.repo = "numericalnim";
  inputs.src-numericalnim-master.ref = "refs/heads/master";
  
  
  inputs."arraymancer".url = "path:../../../a/arraymancer";
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."https://github.com/hugogranstrom/cdt".url = "path:../../../h/https://github.com/hugogranstrom/cdt";
  inputs."https://github.com/hugogranstrom/cdt".type = "github";
  inputs."https://github.com/hugogranstrom/cdt".owner = "riinr";
  inputs."https://github.com/hugogranstrom/cdt".repo = "flake-nimble";
  inputs."https://github.com/hugogranstrom/cdt".ref = "flake-pinning";
  inputs."https://github.com/hugogranstrom/cdt".dir = "nimpkgs/h/https://github.com/hugogranstrom/cdt";

  outputs = { self, nixpkgs, src-numericalnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numericalnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-numericalnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}