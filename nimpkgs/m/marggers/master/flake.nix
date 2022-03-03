{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-marggers-master.flake = false;
  inputs.src-marggers-master.type = "github";
  inputs.src-marggers-master.owner = "metagn";
  inputs.src-marggers-master.repo = "marggers";
  inputs.src-marggers-master.ref = "refs/heads/master";
  inputs.src-marggers-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-marggers-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-marggers-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}