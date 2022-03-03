{
  description = ''Ascii Text allows you to print large ASCII fonts for the console and for the web'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asciitext-master.flake = false;
  inputs.src-asciitext-master.type = "github";
  inputs.src-asciitext-master.owner = "Himujjal";
  inputs.src-asciitext-master.repo = "asciitextNim";
  inputs.src-asciitext-master.ref = "refs/heads/master";
  inputs.src-asciitext-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asciitext-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciitext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asciitext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}