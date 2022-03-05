{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tempfile-v0_1_2.flake = false;
  inputs.src-tempfile-v0_1_2.type = "github";
  inputs.src-tempfile-v0_1_2.owner = "OpenSystemsLab";
  inputs.src-tempfile-v0_1_2.repo = "tempfile.nim";
  inputs.src-tempfile-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-tempfile-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempfile-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}