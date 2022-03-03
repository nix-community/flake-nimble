{
  description = ''HTTP Cookies for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-cookiejar-master.flake = false;
  inputs.src-cookiejar-master.type = "github";
  inputs.src-cookiejar-master.owner = "planety";
  inputs.src-cookiejar-master.repo = "cookiejar";
  inputs.src-cookiejar-master.ref = "refs/heads/master";
  inputs.src-cookiejar-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cookiejar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cookiejar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cookiejar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}