{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opensimplexnoise-main.flake = false;
  inputs.src-opensimplexnoise-main.type = "github";
  inputs.src-opensimplexnoise-main.owner = "betofloresbaca";
  inputs.src-opensimplexnoise-main.repo = "nim-opensimplexnoise";
  inputs.src-opensimplexnoise-main.ref = "refs/heads/main";
  inputs.src-opensimplexnoise-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opensimplexnoise-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opensimplexnoise-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opensimplexnoise-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}