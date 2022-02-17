{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';
  inputs.src-remarker_light-1_0_1.flake = false;
  inputs.src-remarker_light-1_0_1.type = "github";
  inputs.src-remarker_light-1_0_1.owner = "muxueqz";
  inputs.src-remarker_light-1_0_1.repo = "remarker_light";
  inputs.src-remarker_light-1_0_1.ref = "refs/tags/1.0.1";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-remarker_light-1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-remarker_light-1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-remarker_light-1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}