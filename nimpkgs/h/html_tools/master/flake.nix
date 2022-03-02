{
  description = ''HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-html_tools-master.flake = false;
  inputs.src-html_tools-master.type = "github";
  inputs.src-html_tools-master.owner = "juancarlospaco";
  inputs.src-html_tools-master.repo = "nim-html-tools";
  inputs.src-html_tools-master.ref = "refs/heads/master";
  inputs.src-html_tools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."contra".type = "github";
  # inputs."contra".owner = "riinr";
  # inputs."contra".repo = "flake-nimble";
  # inputs."contra".ref = "flake-pinning";
  # inputs."contra".dir = "nimpkgs/c/contra";
  # inputs."contra".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."contra".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-html_tools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html_tools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-html_tools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}