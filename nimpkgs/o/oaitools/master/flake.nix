{
  description = ''A high-level OAI-PMH library.'';
  inputs.src-oaitools-master.flake = false;
  inputs.src-oaitools-master.type = "github";
  inputs.src-oaitools-master.owner = "markpbaggett";
  inputs.src-oaitools-master.repo = "oaitools.nim";
  inputs.src-oaitools-master.ref = "refs/heads/master";
  
  
  inputs."xmltools".type = "github";
  inputs."xmltools".owner = "riinr";
  inputs."xmltools".repo = "flake-nimble";
  inputs."xmltools".ref = "flake-pinning";
  inputs."xmltools".dir = "nimpkgs/x/xmltools";

  outputs = { self, nixpkgs, src-oaitools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oaitools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oaitools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}