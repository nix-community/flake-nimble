{
  description = ''PLZ Python PIP alternative'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-plz-0_0_1.flake = false;
  inputs.src-plz-0_0_1.type = "github";
  inputs.src-plz-0_0_1.owner = "juancarlospaco";
  inputs.src-plz-0_0_1.repo = "nim-pypi";
  inputs.src-plz-0_0_1.ref = "refs/tags/0.0.1";
  
  
  inputs."requirementstxt".type = "github";
  inputs."requirementstxt".owner = "riinr";
  inputs."requirementstxt".repo = "flake-nimble";
  inputs."requirementstxt".ref = "flake-pinning";
  inputs."requirementstxt".dir = "nimpkgs/r/requirementstxt";

  
  inputs."libarchibi".type = "github";
  inputs."libarchibi".owner = "riinr";
  inputs."libarchibi".repo = "flake-nimble";
  inputs."libarchibi".ref = "flake-pinning";
  inputs."libarchibi".dir = "nimpkgs/l/libarchibi";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plz-0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plz-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plz-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}