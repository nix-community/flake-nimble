{
  description = ''PLZ Python PIP alternative'';
  inputs.src-plz-master.flake = false;
  inputs.src-plz-master.type = "github";
  inputs.src-plz-master.owner = "juancarlospaco";
  inputs.src-plz-master.repo = "nim-pypi";
  inputs.src-plz-master.ref = "refs/heads/master";
  
  
  inputs."requirementstxt".type = "github";
  inputs."requirementstxt".owner = "riinr";
  inputs."requirementstxt".repo = "flake-nimble";
  inputs."requirementstxt".ref = "flake-pinning";
  inputs."requirementstxt".dir = "nimpkgs/r/requirementstxt";

  outputs = { self, nixpkgs, src-plz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}