{
  description = ''JSON-Binding for deser'';
  inputs.src-deser_json-master.flake = false;
  inputs.src-deser_json-master.type = "github";
  inputs.src-deser_json-master.owner = "gabbhack";
  inputs.src-deser_json-master.repo = "deser_json";
  inputs.src-deser_json-master.ref = "refs/heads/master";
  
  
  inputs."faststreams".url = "path:../../../f/faststreams";
  inputs."faststreams".type = "github";
  inputs."faststreams".owner = "riinr";
  inputs."faststreams".repo = "flake-nimble";
  inputs."faststreams".ref = "flake-pinning";
  inputs."faststreams".dir = "nimpkgs/f/faststreams";

  
  inputs."deser".url = "path:../../../d/deser";
  inputs."deser".type = "github";
  inputs."deser".owner = "riinr";
  inputs."deser".repo = "flake-nimble";
  inputs."deser".ref = "flake-pinning";
  inputs."deser".dir = "nimpkgs/d/deser";

  outputs = { self, nixpkgs, src-deser_json-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser_json-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deser_json-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}