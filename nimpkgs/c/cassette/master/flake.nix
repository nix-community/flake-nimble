{
  description = ''Record and replay your HTTP sessions!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cassette-master.flake = false;
  inputs.src-cassette-master.type = "github";
  inputs.src-cassette-master.owner = "LemonBoy";
  inputs.src-cassette-master.repo = "cassette";
  inputs.src-cassette-master.ref = "refs/heads/master";
  inputs.src-cassette-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cassette-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cassette-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cassette-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}