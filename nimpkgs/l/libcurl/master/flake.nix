{
  description = ''Nim wrapper for libcurl.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libcurl-master.flake = false;
  inputs.src-libcurl-master.type = "github";
  inputs.src-libcurl-master.owner = "Araq";
  inputs.src-libcurl-master.repo = "libcurl";
  inputs.src-libcurl-master.ref = "refs/heads/master";
  inputs.src-libcurl-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libcurl-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libcurl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libcurl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}