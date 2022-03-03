{
  description = ''A truly minimal concatenative programming language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mn-master.flake = false;
  inputs.src-mn-master.type = "github";
  inputs.src-mn-master.owner = "h3rald";
  inputs.src-mn-master.repo = "mn";
  inputs.src-mn-master.ref = "refs/heads/master";
  inputs.src-mn-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mn-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mn-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mn-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}