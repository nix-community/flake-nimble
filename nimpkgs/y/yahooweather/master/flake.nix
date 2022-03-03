{
  description = ''Yahoo! Weather API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-yahooweather-master.flake = false;
  inputs.src-yahooweather-master.type = "github";
  inputs.src-yahooweather-master.owner = "achesak";
  inputs.src-yahooweather-master.repo = "nim-yahooweather";
  inputs.src-yahooweather-master.ref = "refs/heads/master";
  inputs.src-yahooweather-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-yahooweather-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yahooweather-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-yahooweather-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}