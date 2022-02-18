{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-htmlunescape-v0_1.flake = false;
  inputs.src-htmlunescape-v0_1.type = "github";
  inputs.src-htmlunescape-v0_1.owner = "AmanoTeam";
  inputs.src-htmlunescape-v0_1.repo = "htmlunescape";
  inputs.src-htmlunescape-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlunescape-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlunescape-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlunescape-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}