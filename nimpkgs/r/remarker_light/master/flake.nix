{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';
  inputs.src-remarker_light-master.flake = false;
  inputs.src-remarker_light-master.type = "github";
  inputs.src-remarker_light-master.owner = "muxueqz";
  inputs.src-remarker_light-master.repo = "remarker_light";
  inputs.src-remarker_light-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-remarker_light-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-remarker_light-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-remarker_light-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}