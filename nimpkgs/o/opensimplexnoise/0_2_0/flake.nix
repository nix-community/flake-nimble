{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-opensimplexnoise-0_2_0.flake = false;
  inputs.src-opensimplexnoise-0_2_0.type = "github";
  inputs.src-opensimplexnoise-0_2_0.owner = "betofloresbaca";
  inputs.src-opensimplexnoise-0_2_0.repo = "nim-opensimplexnoise";
  inputs.src-opensimplexnoise-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-opensimplexnoise-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opensimplexnoise-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opensimplexnoise-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opensimplexnoise-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}