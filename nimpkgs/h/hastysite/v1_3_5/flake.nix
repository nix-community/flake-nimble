{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hastysite-v1_3_5.flake = false;
  inputs.src-hastysite-v1_3_5.type = "github";
  inputs.src-hastysite-v1_3_5.owner = "h3rald";
  inputs.src-hastysite-v1_3_5.repo = "hastysite";
  inputs.src-hastysite-v1_3_5.ref = "refs/tags/v1.3.5";
  inputs.src-hastysite-v1_3_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastysite-v1_3_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastysite-v1_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}