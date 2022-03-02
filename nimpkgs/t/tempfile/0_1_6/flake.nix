{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tempfile-0_1_6.flake = false;
  inputs.src-tempfile-0_1_6.type = "github";
  inputs.src-tempfile-0_1_6.owner = "OpenSystemsLab";
  inputs.src-tempfile-0_1_6.repo = "tempfile.nim";
  inputs.src-tempfile-0_1_6.ref = "refs/tags/0.1.6";
  inputs.src-tempfile-0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempfile-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}