---@meta

---@class JSONBody
JSONBody = {}



--- Creates a new JSONBody.
---@param raw string @The raw JSON string.
---@return JSONBody @Returns a new JSONBody instance.
function JSONBody.new(raw)
    -- Implementation in Go
end

--- Retrieves the raw JSON string from the body.
---@return string @Returns the raw JSON string.
function JSONBody:getRaw()
    -- Implementation in Go
end

--- Sets the raw JSON string in the body.
---@param raw string @The raw JSON string to set.
function JSONBody:setRaw(raw)
    -- Implementation in Go
end

--- Retrieves the value associated with a given path.
---@param path string @The path in dot notation (e.g., "person.name").
---@return any @Returns the value at the specified path.
function JSONBody:get(path)
    -- Implementation in Go
end

--- Sets the value at a specified path.
---@param path string @The path in dot notation (e.g., "person.name").
---@param value any @The value to set at the specified path.
function JSONBody:set(path, value)
    -- Implementation in Go
end

--- Checks if a key exists at the specified path.
---@param path string @The path in dot notation (e.g., "person.name").
---@return boolean @Returns true if the key exists, false otherwise.
function JSONBody:exists(path)
    -- Implementation in Go
end
