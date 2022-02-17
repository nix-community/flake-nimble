{
  description = ''Fetch url resources via HTTP and HTTPS.'';
  inputs.src-puppy-master.flake = false;
  inputs.src-puppy-master.type = "github";
  inputs.src-puppy-master.owner = "treeform";
  inputs.src-puppy-master.repo = "puppy";
  inputs.src-puppy-master.ref = "refs/heads/master";
  
  
  inputs."urlly".type = "github";
  inputs."urlly".owner = "riinr";
  inputs."urlly".repo = "flake-nimble";
  inputs."urlly".ref = "flake-pinning";
  inputs."urlly".dir = "nimpkgs/u/urlly";

  
  inputs."libcurl".type = "github";
  inputs."libcurl".owner = "riinr";
  inputs."libcurl".repo = "flake-nimble";
  inputs."libcurl".ref = "flake-pinning";
  inputs."libcurl".dir = "nimpkgs/l/libcurl";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-puppy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-puppy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-puppy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}