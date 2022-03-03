{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tempfile-0_1_5.flake = false;
  inputs.src-tempfile-0_1_5.type = "github";
  inputs.src-tempfile-0_1_5.owner = "OpenSystemsLab";
  inputs.src-tempfile-0_1_5.repo = "tempfile.nim";
  inputs.src-tempfile-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-tempfile-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempfile-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}