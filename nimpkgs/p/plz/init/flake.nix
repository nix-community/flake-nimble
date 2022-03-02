{
  description = ''PLZ Python PIP alternative'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-plz-init.flake = false;
  inputs.src-plz-init.type = "github";
  inputs.src-plz-init.owner = "juancarlospaco";
  inputs.src-plz-init.repo = "nim-pypi";
  inputs.src-plz-init.ref = "refs/tags/init";
  inputs.src-plz-init.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimarchive".type = "github";
  # inputs."nimarchive".owner = "riinr";
  # inputs."nimarchive".repo = "flake-nimble";
  # inputs."nimarchive".ref = "flake-pinning";
  # inputs."nimarchive".dir = "nimpkgs/n/nimarchive";
  # inputs."nimarchive".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimarchive".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plz-init, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plz-init;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plz-init"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}