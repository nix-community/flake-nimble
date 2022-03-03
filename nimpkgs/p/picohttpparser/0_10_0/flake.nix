{
  description = ''Bindings for picohttpparser.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-picohttpparser-0_10_0.flake = false;
  inputs.src-picohttpparser-0_10_0.type = "github";
  inputs.src-picohttpparser-0_10_0.owner = "philip-wernersbach";
  inputs.src-picohttpparser-0_10_0.repo = "nim-picohttpparser";
  inputs.src-picohttpparser-0_10_0.ref = "refs/tags/0.10.0";
  inputs.src-picohttpparser-0_10_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-picohttpparser-0_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-picohttpparser-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-picohttpparser-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}