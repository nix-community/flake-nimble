{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-htmlunescape-v0_2.flake = false;
  inputs.src-htmlunescape-v0_2.type = "github";
  inputs.src-htmlunescape-v0_2.owner = "AmanoTeam";
  inputs.src-htmlunescape-v0_2.repo = "htmlunescape";
  inputs.src-htmlunescape-v0_2.ref = "refs/tags/v0.2";
  inputs.src-htmlunescape-v0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlunescape-v0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlunescape-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlunescape-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}