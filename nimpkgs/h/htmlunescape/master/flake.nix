{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-htmlunescape-master.flake = false;
  inputs.src-htmlunescape-master.type = "github";
  inputs.src-htmlunescape-master.owner = "AmanoTeam";
  inputs.src-htmlunescape-master.repo = "htmlunescape";
  inputs.src-htmlunescape-master.ref = "refs/heads/master";
  inputs.src-htmlunescape-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlunescape-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlunescape-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlunescape-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}