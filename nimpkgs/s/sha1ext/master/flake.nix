{
  description = ''std / sha1 extension'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sha1ext-master.flake = false;
  inputs.src-sha1ext-master.type = "github";
  inputs.src-sha1ext-master.owner = "CORDEA";
  inputs.src-sha1ext-master.repo = "sha1ext";
  inputs.src-sha1ext-master.ref = "refs/heads/master";
  inputs.src-sha1ext-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sha1ext-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sha1ext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sha1ext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}