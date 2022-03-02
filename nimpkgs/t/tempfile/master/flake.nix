{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tempfile-master.flake = false;
  inputs.src-tempfile-master.type = "github";
  inputs.src-tempfile-master.owner = "OpenSystemsLab";
  inputs.src-tempfile-master.repo = "tempfile.nim";
  inputs.src-tempfile-master.ref = "refs/heads/master";
  inputs.src-tempfile-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempfile-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}